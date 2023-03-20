import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, Validators } from '@angular/forms';


@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent implements OnInit {
  userForm!: FormGroup;

  constructor(private http : HttpClient, private fb:FormBuilder) { }

  ngOnInit(){  
this.userForm=this.fb.group({
  name:['',Validators.required],
  age:['',Validators.required]
})
}
  
      onSubmit(){
        console.log(this.userForm.value);
      this.http.post('http://localhost:8088/trail/user-details', this.userForm.value).subscribe(data=>{
        console.log(data);
        })
    }
  }

